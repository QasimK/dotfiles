function history-undo -d "Delete the last command from history"
  history delete --exact --case-sensitive (history search --max=1)
end

