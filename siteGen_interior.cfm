<cfscript>
    
    readList = deserializeJSON( fileRead(expandPath("./siteGen_interior_list.json"), "utf-8") );

    for(item in readList) {
        // writeDump(readList['#item#']['title']);
        // writeDump(readList['#item#']['banner_name']);
        // writeDump(readList['#item#']['content']);

        outputFilename = readList['#item#'];
        outputTitle = readList['#item#']['title'];
        outputBannerName = readList['#item#']['banner_name'];
        outputContent = readList['#item#']['content'];

        makeFilename = item;

        fileContent = fileRead(expandPath("./siteGenTemplate_interior.html"), "utf-8");

        fileContent = replace(fileContent, "[SITE_INT_TITLE]", outputTitle);
        fileContent = replace(fileContent, "[SITE_INT_BANNER_NAME]", outputBannerName);
        fileContent = replace(fileContent, "[[SITE_INT_CONTENT]", outputContent);

        fileWrite(expandPath("./#makeFilename#"), fileContent, "utf-8" );

        writeOutput("#makeFilename# is created.")
    }

</cfscript>




<cfoutput >
    The interior files have been created
</cfoutput>