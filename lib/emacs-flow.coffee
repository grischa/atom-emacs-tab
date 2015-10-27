#
# Copyright (c) 2014 by Lifted Studios. All Rights Reserved.
#

# Public: This class contains the top-level command functionality for the Emacs
# Flow package.
module.exports =
class EmacsFlow
  # Public: Auto-indents the current row in the active editor.
  autoIndent: ->
    editor = atom.workspace.getActiveTextEditor()
    return unless editor

    [row, _] = editor.getCursorBufferPosition().toArray()
    console.log(row)
    editor.indentSelectedRows(row)
