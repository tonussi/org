int alpha (int x, int y, int z) {
  if (x == 0) {
    return x + beta(z - y);
  } else if (x == 1) {
    return x - beta(z - x);
  }
}
