# Writers Workflow
## by J. B. Author
This document simulates how you would compose a story using a Git-based writers workflow. View the raw to better understand the markdown.

This example uses standard Markdown but could be modified to use other raw text formats, but the script assumes Markdown. A script then exports this Markdown into docx.

Why use Markdown? It is a raw text format that is easy to track using Git.

In this case, we would be composing our story in WritersWorkflow.md and tracking this file in Git along with all the supporting documents. We place this file under WritersWorkFlow/WritersWorkflow.md.

We could write / edit additional stories by using this same file structure. For example, AnotherStory/AnotherStory.md. 

When working in Markdown, be sure to break paragraphs with two spaces.

Like so.

To export your Markdown document, customize the scripts/export.sh shell script for each story.

Note that this script presently doesn't take arguments. You must customize a script for each story. A future version should accept arguments. (This is not optimal. Pull requests to make this script more general are welcome! My bash scripting skills are weak.)

For example, from the scripts/ directory, run:

./export.sh

The output for your story will appear in the exports/ directory.

You will want to customize scripts/header.md prior to running this script, as it contains your author information and will be appended to the top of your exported document.

You can also customize export.sh to parse your Markdown and find / replace custom markup. For example, if you have a character who always speaks in the color red, you could &lt;fred&gt;Markup their dialog like so&lt;/fred&gt;. You could then update your export.sh script to replace these custom tags with proper Markdown styling, as well as use variables.

(For example on font colors, see: https://stackoverflow.com/a/35485694)

If you need to change your formatting, edit (in Word) scripts/reference/reference.docx. You will need to update the styles, save, and rerun the script. The current reference.docx is designed for the William Shunn format.

Note that export.sh requires Pandoc installed and available from the command line. All other tools should come with your Mac or Linux OS.

TODO: Improve documentation on this point.

## THE END
