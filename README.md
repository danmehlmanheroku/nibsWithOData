## Nibs with External Interactions

Installation instructions are available here: https://docs.google.com/presentation/d/1TZUa_LoMShAbxHRGrtqPy_XnDrFu-Yn0/edit?usp=sharing&ouid=108875755754817205537&rtpof=true&sd=true

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/danmehlmanheroku/nibsWithOData.git)

Check out the [documentation](http://heroku.github.io/nibs) to learn more about Nibs and to set up your own instance.

## Changes

Updated: 10/2/2018
    
    Updated the node version to be compatible with the Heroku-18 stack

Updated: 2/23/2018

    The repo differs from earlier Nibs versions by removing the interaction table from the sync tables and handling
    interactions as an external object.
    
Updated: 7/22/2015

    Modify product selection query to filter on the 'family' column - defaults to selecting products where 'family' is 'Nibs' - 
    this can be overridden by setting the PRODUCT_FAMILY config variable
    
Updated: 4/21/2015

    Split 'salesforce' schema sql init commands into a separate command. Run 'npm run init_salesforce_schema' now
    to intialize the database **without** Heroku Connect.
