provider bash {
	probe execute_command(int line_number, COMMAND *command);
	probe execute_select_command(int line_number, SELECT_COM *select_command);
	probe execute_simple_command(int line_number, SIMPLE_COM *simple_command);
	probe execute_if_command(int line_number, IF_COM *if_command);
	probe execute_while_or_until(int line_number, WHILE_COM *while_command, int type);
	probe execute_case_command(int line_number, CASE_COM *case_command);
	probe execute_for_command(int line_number, FOR_COM *for_command);
	probe execute_function(int line_number, SHELL_VAR *var, WORD_LIST *words);
	probe execute_builtin(int line_number, sh_builtin_func_t *builtin, WORD_LIST *words);

	probe parse_and_execute(int line_number, char *string, char *from_file);
}
