using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using OpenAIDAL.MySql.Entities;
using OpenAIDAL.VirtualObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace OpenAIDAL.Adapter
{
    public class MenuAdapter
    {
        private readonly OrderGPTContext _openAIContext;

        public MenuAdapter(OrderGPTContext openAIContext)
        {
            _openAIContext = openAIContext;
        }
        //public Dictionary<string, IEnumerable<AvailableSizeV>> GetMenu() =>
        //    _openAIContext.AvailableSizeV.GroupBy(x => x.Item).ToDictionary(x=>x.Key,y=> y.Select(z=>z));

        public List<MenuVO> GetMenu()
        {
            var item = (from mi in _openAIContext.Menuitem
                       join mit in _openAIContext.Menuitemtype on mi.MenuItemTypeId equals mit.Id
                       join avs in _openAIContext.Availablesize on mi.Id equals avs.MenuItemId
                       select new 
                       {
                           ItemID = mi.Id,
                           ItemName = mi.Name,
                           ItemType = mit.Name,
                           Size = avs.Name,
                           Value = avs.Value,
                       }).ToList()
                       .GroupBy(i => new { i.ItemID, i.ItemName, i.ItemType })
                       .Select(g => new MenuVO
                       {
                           ItemID = g.Key.ItemID,
                           ItemName = g.Key.ItemName,
                           ItemType = g.Key.ItemType,
                           AvailableSize = g.Select(s => new AvailableSizeVO { Size = s.Size, Value = s.Value }).ToList()
                       })
                       .ToList();
            return item;
        }
    }
}
