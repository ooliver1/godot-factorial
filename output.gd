extends Label

func _on_spin_box_value_changed(value: float) -> void:
	var result = factorial_iterative(int(value))
	self.text = str(result)

func factorial_iterative(input: int) -> int:
	# n! = n × (n − 1)!
	# Limited to only integers, decimals require the gomma function.
	var result := 1

	while input != 0:
		result *= input
		print(result)
		input -= 1

	return result

func factorial_recursive(input: int) -> int:
	if input == 1:
		return 1

	return input * factorial_recursive(input - 1)
