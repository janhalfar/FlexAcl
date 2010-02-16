package com.bestbytes.zugspitze.acl
{
	import mx.core.UIComponent;
	
	public interface IAclDelegate
	{
		function updateRead(allowed:Boolean, target:UIComponent):void;
		function updateCreate(allowed:Boolean, target:UIComponent):void;
		function updateUpdate(allowed:Boolean, target:UIComponent):void;
		function updateDrop(allowed:Boolean, target:UIComponent):void;
		function updateExecute(allowed:Boolean, target:UIComponent):void;
	}
}