﻿namespace OpenAIService.Models.Response
{
    /// <summary>
    /// 訊息回傳
    /// </summary>
    public class MessageResponse
    {
        /// <summary>
        /// 會話ID
        /// </summary>
        public Guid ConversationID { get; set; }
        /// <summary>
        /// 訊息
        /// </summary>
        public MessageRes Messages { get; set; }
    }

    /// <summary>
    /// 訊息
    /// </summary>
    public class MessageRes
    {
        /// <summary>
        /// 訊息ID
        /// </summary>
        public Guid ID { get; set; }
        /// <summary>
        /// 訊息內容
        /// </summary>
        public string Value { get; set; }
        /// <summary>
        /// 排序ID
        /// </summary>
        public int OrderID { get; set; }
    }
}