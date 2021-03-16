import Vapor
import Tau

public func configure(_ app: Application) throws {

    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    /// setup Leaf template engine
    Renderer.Option.caching = .bypass
    
    let detected = TemplateEngine.rootDirectory ?? app.directory.viewsDirectory
    TemplateEngine.rootDirectory = detected

    TemplateEngine.sources = .singleSource(FileSource(fileio: app.fileio,
                                                      limits: .default,
                                                      sandboxDirectory: detected,
                                                      viewDirectory: detected,
                                                      defaultExtension: "html"))

    app.views.use(.tau)

    if let hostname = Environment.get("SERVER_HOSTNAME") {
        app.http.server.configuration.hostname = hostname
    }

    app.get() { req in
        req.tau.render(template: "pages/home")
    }

    app.get(.anything) { req -> EventLoopFuture<View> in
        guard !req.url.path.contains("."), let slug = req.url.path.split(separator: "/").first else {
            return req.eventLoop.future(error: Abort(.notFound))
        }
        return req.tau.render(template: "pages/" + String(slug).lowercased())
    }
}
