package main

import (
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
)

func TestHello(t *testing.T) {
	res := httptest.NewRecorder()
	req := httptest.NewRequest(http.MethodGet, "/hello", nil)
	Hello(res, req)

	if want := "text/plain"; res.Header().Get("Content-Type") != want {
		t.Errorf(
			`got HTTP Content-Type header "%s", want "%s"`,
			res.Header().Get("Content-Type"),
			want,
		)
	}

	if want := http.StatusOK; res.Code != want {
		t.Errorf("got HTTP status code %d, want %d", res.Code, want)
	}

	if want := "Hello!"; !strings.Contains(res.Body.String(), want) {
		t.Errorf(
			`response body "%s" does not contain "%s"`,
			res.Body.String(),
			want,
		)
	}
}
