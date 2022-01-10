<?php

namespace Core\HTML;

class BootstrapForm extends Form
{

    /**
     * @param string $html Code HTML à entourer
     * @return string
     */
    protected function surround($html)
    {
        return "<div class=\"form-group\">{$html}</div>";
    }

    /**
     * @param string $name
     * @param string $label
     * @param array $options
     * @return string
     */
    public function input($name, $label, $options = [])
    {
        $type = isset($options['type']) ? $options['type'] : 'text';
        return $this->surround('<label>' . $label . '</label>' .
            '<input type="' . $type . '" name="' . $name . '" value="' . $this->getValue($name) . '" class="form-control">');
    }

    /**
     * @return string
     */
    public function submit()
    {
        return $this->surround('<input type="submit" class="btn btn-primary" value="Envoyer">');
    }
}
