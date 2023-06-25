namespace OpenAIData.VirtualObjects
{
    public class MenuVO
    {
        public string ItemID { get; set; }
        public string ItemName { get; set; }
        public string ItemType { get; set; }
        public List<string> AvailableIce { get; set; }
        public List<string> AvailableSuger { get; set; }
        public List<KeyValuePair<string, int>> AvailableSize { get; set; }
        public List<KeyValuePair<string, int>> Availabletoppings { get; set; }
    }
}
