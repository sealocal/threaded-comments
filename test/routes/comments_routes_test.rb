class CommentsRoutesTest < ActionController::TestCase
  test "should route to comments index" do
    assert_routing({ method: 'get', path: '/comments' }, { controller: 'comments', action: 'index' })
  end

  test "should route to comments show" do
    assert_routing({ method: 'get', path: '/comments/1' }, { controller: 'comments', action: 'show', id: '1' })
  end

  test "should route to comments new" do
    assert_routing({ method: 'get', path: '/comments/new' }, { controller: 'comments', action: 'new' })
  end

  test "should route to comments edit" do
    assert_routing({ method: 'get', path: '/comments/1/edit' }, { controller: 'comments', action: 'edit', id: '1' })
  end

  test "should route to comments create" do
    assert_routing({ method: 'post', path: '/comments' }, { controller: 'comments', action: 'create' })
  end

  test "should route to comments update" do
    assert_routing({ method: 'patch', path: '/comments/1' }, { controller: 'comments', action: 'update', id: '1' })
  end

  test "should route to comments destroy" do
    assert_routing({ method: 'delete', path: '/comments/1' }, { controller: 'comments', action: 'destroy', id: '1' })
  end
end
