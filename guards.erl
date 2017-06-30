-module(guards).
-compile(export_all).


old_enough_to_drive(Age) when Age >= 16 ->
    true;
old_enough_to_drive(_) ->
    false.
