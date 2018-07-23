import React, { Component } from "react";
import { Grid, Row, Col } from "react-bootstrap";

export default class Header extends Component {
    render() {
        return (
            <Grid fluid>
                <Row className="show-grid">
                    <Col xs={12} md={8}>
                        <code>&lt;{"Col xs={12} md={8}"} /&gt;</code>
                    </Col>
                    <Col xs={6} md={4}>
                        <code>&lt;{"Col xs={6} md={4}"} /&gt;</code>
                    </Col>
                </Row>
            </Grid>
        );
    }
}
