/datum/ai_bridge
	var/list/pending_faxes = list()
	var/fax_uid_counter = 0
	var/prompt_analyze_text = ""
	var/prompt_reply_text = ""
