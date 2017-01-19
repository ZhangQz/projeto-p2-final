<?php

class ProgramaControl
{
  private $model;

  public function __construct($model)
  {
    $this->model = $model;
  }

  public function progIndex()
  {
    return $this->model->AllProg();
  }

  public function ProgDestroy()
  {
    if ($->model->ProgDelete($locutor))
      return 1;
    else
      return 0;
  }

  public function ProdEdit($locutor)
  {
    if ($this->model->ProdUpdate($locutor))
      return 1;
    else
      return 0;
  }

  public function NewProg($locutor)
  {
    if ($this->model->ProgNew($locutor))
      return 1;
    else
      return 0;
  }

  public function NomeProg($locutor)
  {
    return $this->model->ProgName($nome);
  }
}
?>
