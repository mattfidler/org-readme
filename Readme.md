#  Org Readme
 Matthew L. Fidler
## Library Information
 __org-readme.el__ --- Integrates Readme.org and Commentary/Change-logs.

- __Filename__ --  org-readme.el
- __Description__ --  Integrate Readme.org and Commentary/Change Logs.
- __Author__ --  Matthew L. Fidler
- __Maintainer__ --  Matthew L. Fidler
- __Created__ --  Fri Aug  3 22:33:41 2012 (-0500)
- __Version__ --  0.22
- __Package-Requires__ --  ((http-post-simple "1.0") (yaoddmuse "0.1.1")(header2 "21.0") (lib-requires "21.0"))
- __Last-Updated__ --  Mon Aug 13 21:53:01 2012 (-0500)
- __By__ --  Matthew L. Fidler
- __Update #__ --  680
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

All other sections of the Readme.org are then put into the
"Commentary" section of the readme.org.

In addition this library defines `org-readme-sync`,  a convenience function that:

- Asks for a commentary about the library change.
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


<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption></caption>
<colgroup><col align="left" /><col align="left" />
</colgroup>
<thead>
<tr><th scope="col" align="left">Library</th><th scope="col" align="left">Why it is needed</th></tr>
</thead>
<tbody>
<tr><td align="left">yaoddmuse</td><td align="left">Publish to emacswiki</td></tr>
<tr><td align="left">http-post-simple</td><td align="left">Publish to marmalade-repo.org</td></tr>
<tr><td align="left">header2</td><td align="left">To create header and changelog</td></tr>
<tr><td align="left">lib-requires</td><td align="left">To generate the library dependencies</td></tr>
</tbody>
</table>



## History

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
- __07-Aug-2012__ --   To use, put (require 'ess-smart-underscore) in your ~/.emacs file 7-Aug-2012 Matthew L. Fidler Last-Updated: Mon Aug 13 21:53:20 2012 (-0500)
- __06-Aug-2012__ --   Added support for uploading Readme.org files to emacswiki without having to have a single associated lisp file. (Matthew L. Fidler)
- __06-Aug-2012__ --   Bug fix for syncing from the single lisp file. (Matthew L. Fidler)
- __06-Aug-2012__ --   Added the ability to call `org-readme-sync` from Readme.org (Matthew L. Fidler)
- __05-Aug-2012__ --   Added git pushing to org-readme (Matthew L. Fidler)
- __05-Aug-2012__ --   Added git support as well as a comment mode. The only thing that should need to be called is `org-readme-sync` (Matthew L. Fidler)
- __04-Aug-2012__ --   Added syncing with emacswiki.  (Matthew L. Fidler)
- __04-Aug-2012__ --   Initial Release  (Matthew L. Fidler)
