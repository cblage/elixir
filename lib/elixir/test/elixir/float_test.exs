Code.require_file "test_helper.exs", __DIR__

defmodule FloatTest do
  use ExUnit.Case, async: true

  test :parse do
    assert Float.parse("12") === {12.0, ""}
    assert Float.parse("-12") === {-12.0, ""}
    assert Float.parse("123456789") === {123456789.0, ""}
    assert Float.parse("12.5") === {12.5, ""}
    assert Float.parse("-12.5") === {-12.5, ""}
    assert Float.parse("7.5e3") === {7.5e3, ""}
    assert Float.parse("7.5e-3") === {7.5e-3, ""}
    assert Float.parse("12x") === {12.0, "x"}
    assert Float.parse("12.5x") === {12.5, "x"}
    assert Float.parse("pi") === :error
  end
end
