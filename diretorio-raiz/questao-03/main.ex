defmodule MeuEnum do

  def filtrar(lista, predicado) when is_list(lista) and is_function(predicado, 1) do
    do_filtrar(lista, predicado, [])
  end

  defp do_filtrar([], _predicado, acc) do
    #inverter(acc, [])
    acc
  end

  defp do_filtrar((h | t), predicado, acc) do
    if predicado.(h) do
      do_filtrar(t, predicado, [h | acc])
    else
      do_filtrar(t, predicado, acc)
    end
  end

  defp inverter([], acc) do
    acc
  end

  defp inverter([h | t], acc) do
    inverter(t, [h | acc])
  end

end
