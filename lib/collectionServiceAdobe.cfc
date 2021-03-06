<!---
   Copyright 2011 Blue River Interactive

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
--->
<cfcomponent output="false" extends="collectionService">

<cffunction name="getCollections" output="false">
	 <cfset var rs="">
	 <cfcollection action="list" name="rs" engine="solr"/>
	 <cfreturn rs>
</cffunction>

<cffunction name="createCollection" output="false">
	<cfargument name="collection">
	<cfargument name="language">
	<cfcollection action="create" engine="solr" collection="#arguments.collection#" path="#variables.collectionDir#" language="#arguments.language#"/>
</cffunction>
</cfcomponent>
