<cfscript>
    makeFilename = "index.html";
    
    fileContent = fileRead(expandPath("./siteGenTemplate_index.html"), "utf-8");

    fileWrite(expandPath("./#makeFilename#"), fileContent, "utf-8" );

</cfscript>



<cfoutput >
    The file <b>#makeFilename#</b> is created
</cfoutput>