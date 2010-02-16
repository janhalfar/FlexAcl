package com.bestbytes.zugspitze.acl
{
	
	[Bindable]
	public class Policy
	{
		public var read:Array = [];
		public var execute:Array = [];
		public var drop:Array = [];
		public var update:Array = [];
		public var create:Array = [];
		
		public function makeClone():Policy
		{
			var policy:Policy = new Policy;
			return policy.addRead(this.read).addCreate(this.create).addUpdate(this.update).addDrop(this.drop).addExecute(this.execute);
		}
		public function addAll(groups:Array):Policy
		{
			return this.addRead(groups).addCreate(groups).addUpdate(groups).addDrop(groups).addExecute(groups);
		}
		public function addRead(groups:Array):Policy
		{
			this.read = this.read.concat(groups);
			return this;
		}
		public function addDrop(groups:Array):Policy
		{
			this.drop = this.drop.concat(groups);
			return this;
		}
		public function addUpdate(groups:Array):Policy
		{
			this.update = this.update.concat(groups);
			return this;
		}
		public function addCreate(groups:Array):Policy
		{
			this.create = this.create.concat(groups);
			return this;
		}
		public function addExecute(groups:Array):Policy
		{
			this.execute = this.execute.concat(groups);
			return this;
		}
		
		public static function createPolicy():Policy
		{
			return new Policy;
		}
	}
}