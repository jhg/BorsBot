# BorsNgBot

https://en.wikipedia.org/wiki/The_Last_of_the_Masters#The_last_government

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `borsngbot` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:borsngbot, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/borsngbot](https://hexdocs.pm/borsngbot).

## Know issues developing in Windows

### OpenSSL error in Windows 10

An error in the version of OpenSSL used by Erlang (at least until version 23) make
mix command fail because can not download using HTTPS. This error is because OpenSSL
use Intel hardware and Intel workaround is to set an environment variable:

```powershell
$Env:OPENSSL_ia32cap = ':~0x20000000'
```

### PowerShell error because mix scripts are not signed

Yes, it's not signed, then you need to run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```
