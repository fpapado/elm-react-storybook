import React from 'react';
import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';

import Elm from './Elm.js';
import CardApp from '../src/Storybook/Card.elm';

import '../src/tachyons.min.css';

const Card = CardApp.Storybook.Card;

let entry =
  { content : "front side"
    , translation : "back side"
    , type_ : "entry"
    , id : "1"
    , rev : "1"
  }

storiesOf('Card', module)
  .add('Card', () => (
    <Elm src={Card} flags={entry} />
  ))
  .add('Other Card', () => (
    <Elm src={Card} flags={entry} />
  ))
