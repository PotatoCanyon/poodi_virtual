The steps to use this to create the repository for a specific class are:

1. Create a new repository in the torqueforge organization at https://github.com/organizations/torqueforge/repositories/new
1. Grab the git url for the new repository  
    something like `git@github.com:PotatoCanyon/biz-YYYY-MMM.git`
1. cd to the root of _this_ project  
    `cd /path/to/exercises`
1. Run the build script:  
    `bin/build_class_repo git@github.com:PotatoCanyon/biz-YYYY-MMM.git`

To copy a file or folder from another branch into master (preferred):

    git checkout master
    git checkout origin/house -- house/
    git commit -m 'add house exercise'
    git push
