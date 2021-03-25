defmodule Rocketpay.NumbersTest do
  use ExUnit.Case
  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, return the sum in file content" do
      response = Numbers.sum_from_file("numbers")

      expect_response = {:ok, %{result: 37}}

      assert response == expect_response
    end

    test "when there is no file with the given name, return an error" do
      response = Numbers.sum_from_file("invalid_file")

      expect_response = {:error, %{message: "Invalid file."}}

      assert response == expect_response
    end
  end
end
