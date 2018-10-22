%%%-------------------------------------------------------------------
%%% @author roland
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. Oct 2018 22:51
%%%-------------------------------------------------------------------
-module(write_binary).
-author("roland").
-export([createfile/5, start/0]).
createfile(inputtemplate, byte_sequence, header, footer, result)->
  {ok, Device} = file:open(inputtemplate, [read]),
  io:format(filelib:file_size(Device)).


start()->
  io:format("~B~n",[16]),
  io:format("~w",[filelib:file_size("/home/roland/Downloads/123.zip")]),
  appendtofile("123.txt","new").

appendtofile(Name, appen)->
  file:write_file(Name, appen).





