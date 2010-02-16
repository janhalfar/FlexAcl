package
{
	import com.bestbytes.zugspitze.acl.IAclDelegate;
	import mx.core.UIComponent;

	public class MyAclDelegate implements IAclDelegate
	{
		public function updateRead(allowed:Boolean, target:UIComponent):void
		{
			trace('read ' + allowed + ' ' + target);
			target.visible = target.includeInLayout = allowed;
		}
		
		public function updateCreate(allowed:Boolean, target:UIComponent):void
		{
		}
		
		public function updateUpdate(allowed:Boolean, target:UIComponent):void
		{
			trace('update ' + allowed + ' ' + target);
			target.enabled = allowed;
		}
		
		public function updateDrop(allowed:Boolean, target:UIComponent):void
		{
		}
		
		public function updateExecute(allowed:Boolean, target:UIComponent):void
		{
			target.enabled = allowed;
		}
		
	}
}