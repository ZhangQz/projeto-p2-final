<?php

class LocutorController
{
  private $model;

  public function __construct($model)
  {
    $this->model = $model;
  }

  public function locutorindex()
  {
    return $this->model->Allloc();
  }

  public function locutordestroy()
  {
    if ($->model->LocDelete($locutor))
      return 1;
    else
      return 0;
  }

  public function locutoredit($locutor)
  {
    if ($this->model->LocUpdate($locutor))
      return 1;
    else
      return 0;
  }

  public function locutornew($locutor)
  {
    if ($this->model->LocNew($locutor))
      return 1;
    else
      return 0;
  }

  public function locutorname($locutor)
  {
    return $this->model->LocName($nome);
  }
}
?>
