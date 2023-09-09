<cfscript>
    /* This page is called to generate the homepage of the website. It reads in the template page, processes the text if needed
       and exports the index.html page back into the site directory.
     */

    makeFilename = "index.html";
    
    // The html file here is a basic HTML file. It is necessary.
    fileContent = fileRead(expandPath("./siteGenTemplate_index.html"), "utf-8");

    fileWrite(expandPath("../#makeFilename#"), fileContent, "utf-8" );

</cfscript>



<cfoutput >
    The file <b>#makeFilename#</b> is created
</cfoutput>