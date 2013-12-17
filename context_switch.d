#!/usr/sbin/dtrace -qs -x ustackframes=100

thread_block_reason:on-cpu /execname == $1/
{
	@[ustack()] = count();
}

profile:::tick-60sec
{
  exit(0);
}
