## Nibs with External Interactions

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/danmehlmanheroku/nibsWithOData.git)

Check out the [documentation](http://heroku.github.io/nibs) to learn more about Nibs and to set up your own instance.

## Changes

Updated: 2/23/2018

    The above Heroku button may not work, but there is a working button inside the ppt slides that are part of this
    repo.
    
    The repo differs from earlier Nibs versions by removing the interaction table from the sync tables and handling
    interactions as an external object.
    
Updated: 7/22/2015

    Modify product selection query to filter on the 'family' column - defaults to selecting products where 'family' is 'Nibs' - 
    this can be overridden by setting the PRODUCT_FAMILY config variable
    
Updated: 4/21/2015

    Split 'salesforce' schema sql init commands into a separate command. Run 'npm run init_salesforce_schema' now
    to intialize the database **without** Heroku Connect.
