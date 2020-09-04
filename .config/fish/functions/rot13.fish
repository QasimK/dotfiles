# Defined in - @ line 1
function rot13 --description alias\ rot13=tr\ \'A-Za-z\'\ \'N-ZA-Mn-za-m\'
	tr 'A-Za-z' 'N-ZA-Mn-za-m' $argv;
end
