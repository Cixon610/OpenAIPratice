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

        public List<MenuVO> Get()
        {
            var items = (from mi in _openAIContext.Menuitem
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
                           AvailableSize = g.Select(s => KeyValuePair.Create(s.Size, s.Value)).ToList()
                       })
                       .ToList();

            var availableToppings = from at in _openAIContext.Availabletopping
                                    join t in _openAIContext.Topping on at.ToppingId equals t.Id
                                    select new { t.Id ,t.Name, t.Value };
            var availableIce = _openAIContext.Availableice.ToList();
            var availableSuger = _openAIContext.Availablesuger.ToList();

            items = items.Select(x =>
            {
                x.AvailableIce = availableIce.Where(y => y.MenuItemId == x.ItemID).Select(y => y.Name).ToList();
                x.AvailableSuger = availableSuger.Where(y => y.MenuItemId == x.ItemID).Select(y => y.Name).ToList();
                x.Availabletoppings = availableToppings.Where(y => y.Id == x.ItemID).Select(y => KeyValuePair.Create(y.Name,y.Value)).ToList();
                return x;
            }).ToList();
            return items;
        }
    }
}
