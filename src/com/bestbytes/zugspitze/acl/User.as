package com.bestbytes.zugspitze.acl
{
	public class User
	{
		public var groups:Array;
		public function User(groups:Array)
		{
			this.groups = groups;
		}
		public function canRead(policy:Policy):Boolean
		{
			return this.can(policy.read);
		}
		public function canCreate(policy:Policy):Boolean
		{
			return this.can(policy.create);
		}
		public function canUpdate(policy:Policy):Boolean
		{
			return this.can(policy.update);
		}
		public function canDrop(policy:Policy):Boolean
		{
			return this.can(policy.drop);
		}
		public function canExecute(policy:Policy):Boolean
		{
			return this.can(policy.execute);
		}
		private function can(policyGroups:Array):Boolean
		{
			if(policyGroups.length>0) {
				for(var i:uint=0;i<this.groups.length;i++) {
					if(policyGroups.indexOf(this.groups[i]) > -1) {
						return true;
					}
				}
				return false;
			} else {
				return true;
			}
		}
	}
}
