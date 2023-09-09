<cfscript>
    /* This page is called to generate the interior pages of the website. It reads in the template pages, appends the content
       from the json file, and exports the [pagename].html page back into the site directory.
     */

    // Get all the site information from the json file
    readList = deserializeJSON( fileRead(expandPath("./siteGen_interior_list.json"), "utf-8") );


    // Loop through the json file and generate a file name for each entry and content
    for(item in readList) {
        // writeDump(readList['#item#']['title']);
        // writeDump(readList['#item#']['banner_name']);
        // writeDump(readList['#item#']['content']);

        outputFilename = readList['#item#'];
        outputTitle = readList['#item#']['title'];
        outputBannerName = readList['#item#']['banner_name'];
        outputContent = readList['#item#']['content'];

        makeFilename = item;

        // The index file is a template file with markers that are replaced using the 
        // functions below.
        fileContent = fileRead(expandPath("./siteGenTemplate_interior.html"), "utf-8");

        fileContent = replace(fileContent, "[SITE_INT_TITLE]", outputTitle);
        fileContent = replace(fileContent, "[SITE_INT_BANNER_NAME]", outputBannerName);
        fileContent = replace(fileContent, "[[SITE_INT_CONTENT]", outputContent);

        // Generate the file name
        fileWrite(expandPath("../#makeFilename#"), fileContent, "utf-8" );

        writeOutput("#makeFilename# is created.<br />")
    }

</cfscript>




<cfoutput >
    <p>The interior files have been created</p>
</cfoutput>