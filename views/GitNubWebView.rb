class GitNubWebView < WebView
  def awakeFromNib
    self.setUIDelegate(self)
  end
  
  def webView_dragDestinationActionMaskForDraggingInfo(view, info)
    WebDragDestinationActionLoad
  end
  
  def webView_dragSourceActionMaskForPoint(view, point)
    WebDragSourceActionLink
  end
  
  def performDragOperation(sender)
    # str = sender.draggingPasteboard.stringForType("NSStringPboardType")
    # puts NSURL.URLWithString(str).host
  end

end