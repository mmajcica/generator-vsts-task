$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\..\..\src\<%- name %>\task.ps1"

Describe "Write-Hello" {

  It "greets the user" {
    Write-Hello "test user" | Should Be "Hello test user"
  }
}
