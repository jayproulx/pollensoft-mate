/*
Copyright 2008 Nahuel Foronda/AsFusion

Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License. Y
ou may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0 

Unless required by applicable law or agreed to in writing, s
oftware distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
See the License for the specific language governing permissions and limitations under the License

Author: Jay Proulx, Architect @ Pollensoft
jason dot proulx at pollensoft dot com

@ignore
*/
package com.asfusion.mate.actionLists
{
	import flash.events.Event;
	
	/**
	 * TypedEventHandlers adds an eventType property to distinguish between two Event classes with identical
	 * event types.
	 * 
	 * @copy com.asfusion.mate.actionLists.EventHandlers#EventHandlers()
	 */
	public class TypedEventHandlers extends EventHandlers
	{
		public var eventType:Class = Event;
		
		override protected function fireEvent(event:Event) : void {
			if(event is eventType) {
				super.fireEvent(event);
			}
		}
	}
}