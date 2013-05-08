#  Org Readme
 Matthew L. Fidler
## Library Information
 _org-readme.el_ --- Integrates Readme.org and Commentary/Change-logs.

- __Filename__ --  org-readme.el
- __Description__ --  Integrate Readme.org and Commentary/Change Logs.
- __Author__ --  Matthew L. Fidler
- __Maintainer__ --  Matthew L. Fidler
- __Created__ --  Fri Aug  3 22:33:41 2012 (-0500)
- __Version__ --  20130322.926
- __Package-Requires__ --  ((http-post-simple "1.0") (yaoddmuse "0.1.1")(header2 "21.0") (lib-requires "21.0"))
- __Last-Updated__ --  Wed Aug 22 13:11:26 2012 (-0500)
- __By__ --  Matthew L. Fidler
- __Update #__ --  794
- __URL__ --  https:__github.com_mlf176f2_org-readme
- __Keywords__ --  Header2, Readme.org, Emacswiki, Git
- __Compatibility__ --  Tested with Emacs 24.1 on Windows.

## Possible Dependencies

  None

## Using org-readme
Org readme is used to:

- Create/Update a "History" section in the Readme.org based on the changelog
  section of the Emacs Log.
- Create/Update a "Library Information" Section Based on the Emacs lisp header.
- Create/Update a "Possible Dependencies" Section Based on the Emacs
  lisp header.
- Create/Update a "Functions" Section based on the functions defined
  in the single lisp library.
- Create/Update a "Variables" Section based on the variables defined
  in the single lisp library.

All other sections of the Readme.org are then put into the
"Commentary" section of the readme.org.

In addition this library defines `org-readme-sync`,  a convenience function that:

- Asks for a commentary about the library change.
  - To exit/save press `C-c C-c`
- Asks if this is a minor revision
  - If it is a minor revision, bumps the revision up so the new
    library will be posted to marmalade-repo.org
  - The package will attempt to add the readme to the info
    documentation system within emacs.
- Syncs the Readme.org with the lisp file as described above.
- Updates emacswiki with the library description and the library
  itself (requires yaoddmuse).
- Updates Marmalade-repo if the library version is different than the
  version in the server (requires http-post-simple).
- Updates the git repository with the differences that you posted.
- If you are using github, this library creates a melpa recipie.
- If you are using github, this library creates a el-get recipie. 

When `org-readme-sync` is called in a `Readme.org` file that is not a
single lisp file, the function exports the readme in EmacsWiki format
and posts it to the EmacsWiki.
### EmacsWiki Page Names
EmacsWiki Page names are generated from the file.  `org-readme.el`
would generate a page of OrgReadme.

### Why each required library is needed
There are a few required libraries.  This is a list of the require
libraries and why they are needed.

+------------------+--------------------------------------+
| Library          | Why it is needed                     |
+------------------+--------------------------------------+
| yaoddmuse        | Publish to emacswiki                 |
| http-post-simple | Publish to marmalade-repo.org        |
| header2          | To create header and changelog       |
| lib-requires     | To generate the library dependencies |
+------------------+--------------------------------------+

## History

8-May-2013    Matthew L. Fidler  
   Last-Updated: Wed Aug 22 13:11:26 2012 (-0500) #794 (Matthew L. Fidler)
   Add bugfix from vapniks for org-readme-to-commentray
3-May-2013    Matthew L. Fidler  
   Last-Updated: Wed Aug 22 13:11:26 2012 (-0500) #794 (Matthew L. Fidler)
   Uploading using org-readme.
- __22-Mar-2013__ --   Bug fix for org-readme generating texinfo documentation from org-files. (Matthew L. Fidler)
- __22-Mar-2013__ --   Separated out the texinfo conversion so that this may be applied to a generalized readme. (Matthew L. Fidler)
- __13-Mar-2013__ --   Added bug fix so that starred initial variables do not mess with org-cut-region. That way, strange duplication of lines and regions do not occur. (Matthew L. Fidler)
- __10-Dec-2012__ --   Changed melpa versions to be nil. However if a melpa version is detected, continue using it. (Matthew L. Fidler)
- __07-Dec-2012__ --   Post to marmalade (Matthew L. Fidler)
- __07-Dec-2012__ --   Remove tar support because it is broken without gnu tar. Gnu tar in windows is broken in opening elpa tarballs. (Matthew L. Fidler)
- __07-Dec-2012__ --   Use 7zip to create tar. May create a readable tar for package.el (Matthew L. Fidler)
- __07-Dec-2012__ --   Trying to test the org-readme tar balls (Matthew L. Fidler)
- __07-Dec-2012__ --   Trying to post the tar package again. (Matthew L. Fidler)
- __07-Dec-2012__ --   Bug fix -- Tar package contents to include trailing /, otherwise emacs complains :( (Matthew L. Fidler)
- __07-Dec-2012__ --   Bug fix for MELPA versions. (Matthew L. Fidler)
- __07-Dec-2012__ --   Updated org-readme to use MELPA versions. Therefore when you upload to marmalade-repo and MELPA doesn't pick up your revision, you can download the latest version yourself and try it out. (Matthew L. Fidler)
- __07-Dec-2012__ --   Added info to melpa recipie. (Matthew L. Fidler)
- __07-Dec-2012__ --   Attempted to add Readme in info format in the elpa package. (Matthew L. Fidler)
- __07-Dec-2012__ --   Bug fix for deleting directory. (Matthew L. Fidler)
- __07-Dec-2012__ --   Remove the directory that was created to make the package tarball  (Matthew L. Fidler)
- __07-Dec-2012__ --   Attempted to fix the package information file. (Matthew L. Fidler)
- __07-Dec-2012__ --   Added tar package that includes the info file (Matthew L. Fidler)
- __07-Dec-2012__ --   No longer deletes ilg files. (Matthew L. Fidler)
- __07-Dec-2012__ --   Bug fix for info generation. (Matthew L. Fidler)
- __07-Dec-2012__ --   Added mecahism to build info files and dir files for elpa package. (Matthew L. Fidler)
- __07-Dec-2012__ --   Get description from info file. (Matthew L. Fidler)
- __07-Dec-2012__ --   The description should now be picked up. (Matthew L. Fidler)
- __07-Dec-2012__ --   Attempting to update description. (Matthew L. Fidler)
- __07-Dec-2012__ --   Test directory entry (Matthew L. Fidler)
- __07-Dec-2012__ --   Added directory entry to texinfo file. (Matthew L. Fidler)
- __18-Sep-2012__ --   Bug fix to allow changes that read (Matthew L. Fidler)
- __12-Sep-2012__ --   Handle errors with the package gracefully. to include the author name who updated the file.  (Matthew L. Fidler)
- __12-Sep-2012__ --   Handle errors with the package gracefully. (Matthew L. Fidler)
- __12-Sep-2012__ --   Bug fix to eliminate duplicate headers in Readme.org and emacswiki (Matthew L. Fidler)
- __12-Sep-2012__ --   Bug fix when org todo faces are not set. (Matthew L. Fidler)
- __12-Sep-2012__ --   Added bug fix when `org-todo-keyword-faces` is undefined. (Matthew L. Fidler)
- __22-Aug-2012__ --   Attempting to upload again (Matthew L. Fidler)
- __22-Aug-2012__ --   Now will remove variable name and functions from markdown and outputted texinfo. (Matthew L. Fidler)
- __21-Aug-2012__ --   Bug fix. When variables/functions are documented with an initial asterisk, change that asterisk to a bulleted item. (Matthew L. Fidler)
- __21-Aug-2012__ --   Another documentation update where I document how to change the comment and that org-readme may change the minor revision of the library. (Matthew L. Fidler)
- __21-Aug-2012__ --   Updated the documentation for org-readme. (Matthew L. Fidler)
- __20-Aug-2012__ --   Bug fix for variables that don't really transport well to the documentation. (Matthew L. Fidler)
- __20-Aug-2012__ --   Bump minor version for marmalade-repo.org (Matthew L. Fidler)
- __20-Aug-2012__ --   Attempt to fix the History list  (Matthew L. Fidler)
- __20-Aug-2012__ --   Added ability to customize which sections are added to the Readme.org (Matthew L. Fidler)
- __20-Aug-2012__ --   Bug fix for creating function readme (Matthew L. Fidler)
- __20-Aug-2012__ --   Will now remove the Functions and Variables sections before putting them in the commentary section. (Matthew L. Fidler)
- __20-Aug-2012__ --   Attempt to remove Readme.md when not needed. (Matthew L. Fidler)
- __20-Aug-2012__ --   Added ability to add function documentation and variable documentation to the Readme.org file (Matthew L. Fidler)
- __20-Aug-2012__ --   Added pandoc markdown table support (optional) (Matthew L. Fidler)
- __13-Aug-2012__ --   Another attempt to make texinfo documents. (Matthew L. Fidler)
- __13-Aug-2012__ --   Added texinfo output. Allows native emacs documentation. (Matthew L. Fidler)
- __13-Aug-2012__ --   Tried to post behind firewall. Reattempting. (Matthew L. Fidler)
- __13-Aug-2012__ --   Changed the `org-readme-remove-section` to use `org-cut-subtree`. Hopefully all errors will resolve themselves now. (Matthew L. Fidler)
- __11-Aug-2012__ --   Reverted. Still buggy. (Matthew L. Fidler)
- __11-Aug-2012__ --   Another attempt at bug fix to remove section. (Matthew L. Fidler)
- __11-Aug-2012__ --   Another attempt at a remove-section fix. (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for org-readme version tagging. (Matthew L. Fidler)
- __11-Aug-2012__ --   Test the bug where some of the section text is deleted  (Matthew L. Fidler)
- __11-Aug-2012__ --   Added more documentation (Matthew L. Fidler)
- __11-Aug-2012__ --   One last bug fix to the markdown export engine. (Matthew L. Fidler)
- __11-Aug-2012__ --   Markdown bug fix (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for el-get recipe. (Matthew L. Fidler)
- __11-Aug-2012__ --   Added the ability to create a markdown Readme (Readme.md) as well as adding a el-get recipe. (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for emacswiki post and melpa bug fix (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for adding melpa recipes.  (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for creating melpa recipe. (Matthew L. Fidler)
- __11-Aug-2012__ --   Added ability to add melpa recipe (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for pushing tags to a git repository (Matthew L. Fidler)
- __11-Aug-2012__ --   Another fix for git tags. (Matthew L. Fidler)
- __11-Aug-2012__ --   Found a bug, let see if tagging works now. (Matthew L. Fidler)
- __11-Aug-2012__ --   Added Git tagging of new versions. Lets see if it works. (Matthew L. Fidler)
- __11-Aug-2012__ --   Git push worked. Bumping minor version. (Matthew L. Fidler)
- __11-Aug-2012__ --   Attempted to push repository again. (Matthew L. Fidler)
- __11-Aug-2012__ --   Attempt to push with git. Something changed. (Matthew L. Fidler)
- __11-Aug-2012__ --   Added better Package-Requires tag. (Matthew L. Fidler)
- __11-Aug-2012__ --   Made request for minor revision earlier, and fixed bug. (Matthew L. Fidler)
- __11-Aug-2012__ --   Fixed code typo (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for deleting a section of a Readme.org file. (Matthew L. Fidler)
- __11-Aug-2012__ --   Testing bug. (Matthew L. Fidler)
- __11-Aug-2012__ --   Minor bug fix. (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for comment sync, now Readme.org `file` is translated to lisp `file`. Additionally, asks for version bump. (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix for syncing readme. Now the returns should not be as prevalent. (Matthew L. Fidler)
- __11-Aug-2012__ --   Attempting to post to marmlade again... (Matthew L. Fidler)
- __11-Aug-2012__ --   Attempting to fix org-readme-marmalade-post. (Matthew L. Fidler)
- __11-Aug-2012__ --   Bug fix to upload to emacswiki and upload to marmalade-repo (Matthew L. Fidler)
- __11-Aug-2012__ --   Added marmalade-repo support. Now org-readme should upload to marmalade-repo when the version is different from the latest version. (Matthew L. Fidler)
- __08-Aug-2012__ --   Fixed preformatting tags in emacswiki post. Previously they may have been replaced with <PRE><_pre> instead of <pre><_pre>. This makes the emacswiki page display correctly. (Matthew L. Fidler)
- __07-Aug-2012__ --   To use, put (require 'ess-smart-underscore) in your ~/.emacs file 7-Aug-2012 Matthew L. Fidler Last-Updated: Tue Aug 7 19:14:34 2012 (-0500) #331 (Matthew L. Fidler) Added a Comment to EmcsWiki pages that states that the content of the page will likely be overwitten since it is automatically generated by `org-readme` 7-Aug-2012 Matthew L. Fidler Last-Updated: Mon Aug 6 23:42:02 2012 (-0500) #328 (Matthew L. Fidler) Added more documentation. (Matthew L. Fidler)
- __06-Aug-2012__ --   Added support for uploading Readme.org files to emacswiki without having to have a single associated lisp file. (Matthew L. Fidler)
- __06-Aug-2012__ --   Bug fix for syncing from the single lisp file. (Matthew L. Fidler)
- __06-Aug-2012__ --   Added the ability to call `org-readme-sync` from Readme.org (Matthew L. Fidler)
- __05-Aug-2012__ --   Added git pushing to org-readme (Matthew L. Fidler)
- __05-Aug-2012__ --   Added git support as well as a comment mode. The only thing that should need to be called is `org-readme-sync` (Matthew L. Fidler)
- __04-Aug-2012__ --   Added syncing with emacswiki.  (Matthew L. Fidler)
- __04-Aug-2012__ --   Initial Release  (Matthew L. Fidler)
