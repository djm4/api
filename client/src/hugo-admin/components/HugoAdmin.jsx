import { List } from 'immutable'
import React from 'react'
import { connect } from 'react-redux'
import { push } from 'react-router-redux'

import { fetchBallots, initHugoAdmin } from '../actions'
import { HUGO_ADMIN_ROUTE_ROOT } from '../constants';
import NominationFilter from './NominationFilter'

class HugoAdmin extends React.Component {

  static propTypes = {
    fetchBallots: React.PropTypes.func.isRequired,
    initHugoAdmin: React.PropTypes.func.isRequired,
    isAdmin: React.PropTypes.bool.isRequired,
    nominations: React.PropTypes.instanceOf(List),
    params: React.PropTypes.shape({
      category: React.PropTypes.string.isRequired
    }).isRequired,
    setCategory: React.PropTypes.func.isRequired
  }

  constructor(props) {
    super(props);
    const { initHugoAdmin, isAdmin } = props;
    if (isAdmin) initHugoAdmin();
    this.state = {
      query: ''
    }
  }

  componentWillReceiveProps(nextProps) {
    const { initHugoAdmin, isAdmin, nominations } = nextProps;
    if (!nominations && isAdmin) initHugoAdmin();
  }

  render() {
    const { children, fetchBallots, isAdmin, params: { category }, setCategory } = this.props;
    const { query } = this.state;
    return <div>
      <NominationFilter
        category={category}
        getBallots={ () => fetchBallots(category) }
        query={query}
        setCategory={ category => {
          setCategory(category);
          this.setState({ query: '' });
        } }
        setQuery={ query => this.setState({ query: query.toLowerCase() }) }
      />
      { isAdmin
        ? React.Children.map(children, (child) => React.cloneElement(child, { category, query }))
        : 'Admin rights required'
      }
    </div>
  }
}

export default connect(
  ({ hugoAdmin, user }, { params: { category }}) => ({
    isAdmin: user.get('hugoAdmin', false),
    nominations: hugoAdmin.getIn(['nominations', category])
  }), {
    fetchBallots,
    initHugoAdmin,
    setCategory: category => push(`${HUGO_ADMIN_ROUTE_ROOT}/${category}/nominations`)
  }
)(HugoAdmin);
