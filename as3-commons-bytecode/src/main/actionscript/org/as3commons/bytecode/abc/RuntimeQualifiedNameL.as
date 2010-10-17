/**
 * Copyright 2009 Maxim Cassian Porges
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.as3commons.bytecode.abc {
	import org.as3commons.bytecode.abc.enum.MultinameKind;
	import org.as3commons.lang.StringUtils;

	/**
	 * as3commons-bytecode representation of <code>RTQNameL</code> in the ABC file format.
	 *
	 * @see http://www.adobe.com/devnet/actionscript/articles/avm2overview.pdf     "RTQNameL" in the AVM Spec (page 9)
	 */
	public class RuntimeQualifiedNameL extends BaseMultiname {

		public function RuntimeQualifiedNameL(kindValue:MultinameKind = null) {
			kindValue = (kindValue) ? kindValue : MultinameKind.RTQNAME_L;
			super(kindValue);
			assertAppropriateMultinameKind([MultinameKind.RTQNAME_L, MultinameKind.RTQNAME_LA], kindValue);
		}

		override public function toString():String {
			return kind.description;
		}
	}
}