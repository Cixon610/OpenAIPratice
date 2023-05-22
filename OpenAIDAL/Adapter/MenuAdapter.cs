using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using OpenAIDAL.Entities;
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
        private readonly OpenAIContext _openAIContext;

        public MenuAdapter(OpenAIContext openAIContext)
        {
            _openAIContext = openAIContext;
        }
        public List<MenuVO> GetMenu()
        {
            var menuList = _openAIContext.MenuItem.Include(x => x.MenuItemType).Select(item =>
                    new MenuVO
                    {
                        ItemName = item.Name,
                        ItemType = item.MenuItemType.Name,
                        AvailableIce = _openAIContext.Ice
                                            .Where(y => _openAIContext.AvailableIce.Any(z => z.IceId == y.Id))
                                            .Select(x => x.Name)
                                            .ToList(),
                        AvailableSuger = _openAIContext.Suger
                                            .Where(y => _openAIContext.AvailableSuger.Any(z => z.SugerId == y.Id))
                                            .Select(x => x.Name)
                                            .ToList(),
                        //AvailableSize = _openAIContext.AvailableSize
                        //                    .Where(x => x.MenuItemId == item.Id)
                        //                    .LeftJoin(_openAIContext.Size, x => x.SizeId, y => y.Id, (a, s) => new { s.Name, a.Value })
                        //                    .ToDictionary(x=>x.Name, x => x.Value)
                    }).ToList();
            return menuList;
        }

    }
}
