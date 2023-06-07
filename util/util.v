module util

pub fn replace_last(str string, rep string, with string) string {
	str.index(rep) or {
		return str
	}

	return str.all_before_last(rep) + with + str.all_after_last(rep)
}