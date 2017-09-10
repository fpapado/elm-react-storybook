import React from 'react';
import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';

import Elm from './Elm.js';
import ComponentApp from '../src/Storybook/Component.elm';

const Component = ComponentApp.Storybook.Component;

storiesOf('Something', module)
  .add('somestory', () => (
    // TODO: load Elm
  ))
