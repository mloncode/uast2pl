long fib(int n, long a, long b) {
	if (n == 0) {
		return a;
	}
	if (n == 1) {
		return b;
	}

	return fib(n-1, b, a + b);
}
