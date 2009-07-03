(defpackage :cffi-clutter
    (:use :cl :cffi :alexandria)
  (:export
   ;; foreign constants
   #:+true+
   #:+false+
   #:+priority-high+
   #:+priority-default+
   #:+priority-high-idle+
   #:+priority-default-idle+
   #:+priority-low+           
   ;; foreign structurs
   #:vertex
   #:button-event
   #:key-event
   #:motion-event
   #:scroll-event
   #:stage-state-event
   #:crossing-event
   #:color
   #:g-value
   #:g-type-class
   #:g-type-instance
   #:geometry
   #:event
   #:g-type-from-instance
   #:cenum-collect-values
   #:cenum-deconstruct-value
   ;; foreign types
   #:va-list
   #:gunichar
   #:guint64
   #:gint64
   #:glong
   #:guchar
   #:gchar
   #:gulong
   #:guint8
   #:guint32
   #:guint16
   #:guint
   #:gssize
   #:gsize
   #:gint
   #:gboolean
   #:gboolean
   #:g-quark
   #:g-type
   #:cogl-handle
   #:cogl-fixed
   #:event-type
   #:gravity
   #:init-error
   #:modifier-type
   #:rotate-axis
   #:rotate-direction
   #:texture-flags
   #:texture-quality
   #:timeline-direction
   #:g-param-flags
   #:pango-alignment
   #:pango-ellipsize-mode
   #:pango-wrap-mode
   #:g-connect-flags
   #:event-flags
   #:scroll-direction
   #:stage-state
   #:cogl-pixel-format
   #:unit-type
   #:font-flags
   #:input-device-type
   #:pick-mode
   #:allocation-flags
   #:actor-flags
   #:g-signal-match-type
   #:modifier-type-composite
   #:texture-flags-composite
   #:g-param-flags-composite
   #:g-connect-flags-composite
   #:event-flags-composite
   #:stage-state-composite
   #:font-flags-composite
   #:allocation-flags-composite
   #:actor-flags-composite
   #:g-signal-match-type-composite
   ;; raw C functions
   #:%actor-set-flags
   #:%actor-unset-flags
   #:%actor-get-flags
   #:%actor-show
   #:%actor-show-all
   #:%actor-hide
   #:%actor-hide-all
   #:%actor-realize
   #:%actor-unrealize
   #:%actor-paint
   #:%actor-queue-redraw
   #:%actor-queue-relayout
   #:%actor-destroy
   #:%actor-event
   #:%actor-should-pick-paint
   #:%actor-map
   #:%actor-unmap
   #:%actor-allocate
   #:%actor-allocate-preferred-size
   #:%actor-allocate-available-size
   #:%actor-get-allocation-box
   #:%actor-get-allocation-geometry
   #:%actor-get-allocation-vertices
   #:%actor-get-preferred-size
   #:%actor-get-preferred-width
   #:%actor-get-preferred-height
   #:%actor-set-fixed-position-set
   #:%actor-get-fixed-position-set
   #:%actor-set-geometry
   #:%actor-get-geometry
   #:%actor-set-size
   #:%actor-get-size
   #:%actor-set-position
   #:%actor-get-position
   #:%actor-set-width
   #:%actor-get-width
   #:%actor-set-height
   #:%actor-get-height
   #:%actor-set-x
   #:%actor-get-x
   #:%actor-set-y
   #:%actor-get-y
   #:%actor-move-by
   #:%actor-set-rotation
   #:%actor-set-z-rotation-from-gravity
   #:%actor-get-rotation
   #:%actor-get-z-rotation-gravity
   #:%actor-is-rotated
   #:%actor-set-opacity
   #:%actor-get-opacity
   #:%actor-set-name
   #:%actor-get-name
   #:%actor-get-gid
   #:%actor-set-clip
   #:%actor-remove-clip
   #:%actor-has-clip
   #:%actor-get-clip
   #:%actor-set-parent
   #:%actor-get-parent
   #:%actor-reparent
   #:%actor-unparent
   #:%actor-raise
   #:%actor-lower
   #:%actor-raise-top
   #:%actor-lower-bottom
   #:%actor-get-stage
   #:%actor-set-depth
   #:%actor-get-depth
   #:%actor-set-scale
   #:%actor-set-scale-full
   #:%actor-set-scale-with-gravity
   #:%actor-get-scale
   #:%actor-get-scale-center
   #:%actor-get-scale-gravity
   #:%actor-is-scaled
   #:%actor-apply-transform-to-point
   #:%actor-transform-stage-point
   #:%actor-apply-relative-transform-to-point
   #:%actor-get-transformed-position
   #:%actor-get-transformed-size
   #:%actor-get-paint-opacity
   #:%actor-get-paint-visibility
   #:%actor-get-abs-allocation-vertices
   #:%actor-get-transformation-matrix
   #:%actor-set-anchor-point
   #:%actor-get-anchor-point
   #:%actor-set-anchor-point-from-gravity
   #:%actor-get-anchor-point-gravity
   #:%actor-move-anchor-point
   #:%actor-move-anchor-point-from-gravity
   #:%actor-set-reactive
   #:%actor-get-reactive
   #:%actor-set-shader
   #:%actor-get-shader
   #:%actor-set-shader-param
   #:%actor-set-shader-param-float
   #:%actor-set-shader-param-int
   #:%actor-grab-key-focus
   #:%actor-get-pango-context
   #:%actor-create-pango-context
   #:%actor-create-pango-layout
   #:%actor-box-new
   #:%actor-box-copy
   #:%actor-box-free
   #:%actor-box-equal
   #:%actor-box-get-x
   #:%actor-box-get-y
   #:%actor-box-get-width
   #:%actor-box-get-height
   #:%actor-box-get-origin
   #:%actor-box-get-size
   #:%actor-box-get-area
   #:%actor-box-contains
   #:%actor-box-from-vertices
   #:%vertex-new
   #:%vertex-copy
   #:%vertex-free
   #:%vertex-equal
   #:%container-add-actor
   #:%container-add-valist
   #:%container-remove-actor
   #:%container-remove-valist
   #:%container-get-children
   #:%container-foreach
   #:%container-foreach-with-internals
   #:%container-find-child-by-name
   #:%container-raise-child
   #:%container-lower-child
   #:%container-sort-depth-order
   #:%container-class-find-child-property
   #:%container-class-list-child-properties
   #:%container-child-set-property
   #:%container-child-get-property
   #:%container-get-child-meta
   #:%child-meta-get-container
   #:%child-meta-get-actor
   #:%media-set-uri
   #:%media-get-uri
   #:%media-set-playing
   #:%media-get-playing
   #:%media-set-progress
   #:%media-get-progress
   #:%media-set-audio-volume
   #:%media-get-audio-volume
   #:%media-get-can-seek
   #:%media-get-buffer-fill
   #:%media-get-duration
   #:%media-set-filename
   #:%rectangle-new
   #:%rectangle-new-with-color
   #:%rectangle-get-color
   #:%rectangle-set-color
   #:%rectangle-get-border-color
   #:%rectangle-set-border-color
   #:%rectangle-get-border-width
   #:%rectangle-set-border-width
   #:%texture-new
   #:%texture-new-from-file
   #:%texture-new-from-actor
   #:%texture-set-from-file
   #:%texture-set-from-rgb-data
   #:%texture-set-from-yuv-data
   #:%texture-set-area-from-rgb-data
   #:%texture-get-base-size
   #:%texture-get-pixel-format
   #:%texture-get-max-tile-waste
   #:%texture-get-filter-quality
   #:%texture-set-filter-quality
   #:%texture-get-cogl-texture
   #:%texture-set-cogl-texture
   #:%texture-get-cogl-material
   #:%texture-set-cogl-material
   #:%texture-get-sync-size
   #:%texture-set-sync-size
   #:%texture-get-repeat
   #:%texture-set-repeat
   #:%texture-get-keep-aspect-ratio
   #:%texture-set-keep-aspect-ratio
   #:%texture-get-load-async
   #:%texture-set-load-async
   #:%texture-get-load-data-async
   #:%texture-set-load-data-async
   #:%clone-new
   #:%clone-set-source
   #:%clone-get-source
   #:%text-new
   #:%text-new-full
   #:%text-new-with-text
   #:%text-set-text
   #:%text-set-markup
   #:%text-get-text
   #:%text-set-activatable
   #:%text-get-activatable
   #:%text-set-attributes
   #:%text-get-attributes
   #:%text-set-color
   #:%text-get-color
   #:%text-set-ellipsize
   #:%text-get-ellipsize
   #:%text-set-font-name
   #:%text-get-font-name
   #:%text-set-password-char
   #:%text-get-password-char
   #:%text-set-justify
   #:%text-get-justify
   #:%text-get-layout
   #:%text-set-line-alignment
   #:%text-get-line-alignment
   #:%text-set-line-wrap
   #:%text-get-line-wrap
   #:%text-set-line-wrap-mode
   #:%text-get-line-wrap-mode
   #:%text-set-max-length
   #:%text-get-max-length
   #:%text-set-selectable
   #:%text-get-selectable
   #:%text-set-selection
   #:%text-get-selection
   #:%text-set-selection-bound
   #:%text-get-selection-bound
   #:%text-set-single-line-mode
   #:%text-get-single-line-mode
   #:%text-set-use-markup
   #:%text-get-use-markup
   #:%text-set-editable
   #:%text-get-editable
   #:%text-insert-text
   #:%text-insert-unichar
   #:%text-delete-chars
   #:%text-delete-text
   #:%text-delete-selection
   #:%text-get-chars
   #:%text-set-cursor-color
   #:%text-get-cursor-color
   #:%text-set-selection-color
   #:%text-get-selection-color
   #:%text-set-cursor-position
   #:%text-get-cursor-position
   #:%text-set-cursor-visible
   #:%text-get-cursor-visible
   #:%text-set-cursor-size
   #:%text-get-cursor-size
   #:%text-activate
   #:%text-position-to-coords
   #:%cairo-texture-new
   #:%cairo-texture-set-surface-size
   #:%cairo-texture-get-surface-size
   #:%cairo-texture-create
   #:%cairo-texture-create-region
   #:%cairo-texture-clear
   #:%cairo-set-source-color
   #:%group-new
   #:%group-remove-all
   #:%group-get-n-children
   #:%group-get-nth-child
   #:%stage-get-default
   #:%stage-new
   #:%stage-is-default
   #:%stage-set-color
   #:%stage-get-color
   #:%stage-set-fullscreen
   #:%stage-get-fullscreen
   #:%stage-show-cursor
   #:%stage-hide-cursor
   #:%stage-get-actor-at-pos
   #:%stage-ensure-current
   #:%stage-ensure-viewport
   #:%stage-ensure-redraw
   #:%stage-queue-redraw
   #:%stage-event
   #:%stage-set-key-focus
   #:%stage-get-key-focus
   #:%stage-read-pixels
   #:%stage-set-perspective
   #:%stage-get-perspective
   #:%stage-set-title
   #:%stage-get-title
   #:%stage-set-user-resizable
   #:%stage-get-user-resizable
   #:%stage-set-use-fog
   #:%stage-get-use-fog
   #:%stage-set-fog
   #:%stage-get-fog
   #:%timeline-new
   #:%timeline-clone
   #:%timeline-set-duration
   #:%timeline-get-duration
   #:%timeline-set-loop
   #:%timeline-get-loop
   #:%timeline-set-delay
   #:%timeline-get-delay
   #:%timeline-set-direction
   #:%timeline-get-direction
   #:%timeline-start
   #:%timeline-pause
   #:%timeline-stop
   #:%timeline-rewind
   #:%timeline-skip
   #:%timeline-advance
   #:%timeline-get-elapsed-time
   #:%timeline-get-delta
   #:%timeline-get-progress
   #:%timeline-is-playing
   #:%timeline-add-marker-at-time
   #:%timeline-has-marker
   #:%timeline-list-markers
   #:%timeline-remove-marker
   #:%timeline-advance-to-marker
   #:%score-new
   #:%score-set-loop
   #:%score-get-loop
   #:%score-append
   #:%score-append-at-marker
   #:%score-remove
   #:%score-remove-all
   #:%score-get-timeline
   #:%score-list-timelines
   #:%score-start
   #:%score-pause
   #:%score-stop
   #:%score-is-playing
   #:%score-rewind
   #:%alpha-new
   #:%alpha-new-full
   #:%alpha-new-with-func
   #:%alpha-set-timeline
   #:%alpha-get-timeline
   #:%alpha-set-mode
   #:%alpha-get-mode
   #:%alpha-get-alpha
   #:%alpha-set-func
   #:%alpha-set-closure
   #:%alpha-register-closure
   #:%alpha-register-func
   #:%behaviour-apply
   #:%behaviour-remove
   #:%behaviour-remove-all
   #:%behaviour-is-applied
   #:%behaviour-actors-foreach
   #:%behaviour-get-actors
   #:%behaviour-get-n-actors
   #:%behaviour-get-nth-actor
   #:%behaviour-get-alpha
   #:%behaviour-set-alpha
   #:%behaviour-depth-new
   #:%behaviour-depth-set-bounds
   #:%behaviour-depth-get-bounds
   #:%behaviour-ellipse-new
   #:%behaviour-ellipse-set-center
   #:%behaviour-ellipse-get-center
   #:%behaviour-ellipse-set-angle-start
   #:%behaviour-ellipse-get-angle-start
   #:%behaviour-ellipse-set-angle-end
   #:%behaviour-ellipse-get-angle-end
   #:%behaviour-ellipse-set-angle-tilt
   #:%behaviour-ellipse-get-angle-tilt
   #:%behaviour-ellipse-set-height
   #:%behaviour-ellipse-get-height
   #:%behaviour-ellipse-set-width
   #:%behaviour-ellipse-get-width
   #:%behaviour-ellipse-set-tilt
   #:%behaviour-ellipse-get-tilt
   #:%behaviour-ellipse-set-direction
   #:%behaviour-ellipse-get-direction
   #:%behaviour-opacity-new
   #:%behaviour-opacity-set-bounds
   #:%behaviour-opacity-get-bounds
   #:%behaviour-path-new
   #:%behaviour-path-new-with-description
   #:%behaviour-path-new-with-knots
   #:%behaviour-path-set-path
   #:%behaviour-path-get-path
   #:%knot-copy
   #:%knot-free
   #:%knot-equal
   #:%path-new
   #:%path-new-with-description
   #:%path-add-move-to
   #:%path-add-rel-move-to
   #:%path-add-line-to
   #:%path-add-rel-line-to
   #:%path-add-curve-to
   #:%path-add-rel-curve-to
   #:%path-add-close
   #:%path-add-string
   #:%path-add-node
   #:%path-add-cairo-path
   #:%path-get-n-nodes
   #:%path-get-node
   #:%path-get-nodes
   #:%path-foreach
   #:%path-insert-node
   #:%path-remove-node
   #:%path-replace-node
   #:%path-get-description
   #:%path-set-description
   #:%path-to-cairo-path
   #:%path-clear
   #:%path-get-position
   #:%path-get-length
   #:%path-node-copy
   #:%path-node-free
   #:%path-node-equal
   #:%behaviour-rotate-new
   #:%behaviour-rotate-set-axis
   #:%behaviour-rotate-get-axis
   #:%behaviour-rotate-set-direction
   #:%behaviour-rotate-get-direction
   #:%behaviour-rotate-set-bounds
   #:%behaviour-rotate-get-bounds
   #:%behaviour-rotate-set-center
   #:%behaviour-rotate-get-center
   #:%behaviour-scale-new
   #:%behaviour-scale-set-bounds
   #:%behaviour-scale-get-bounds
   #:%interval-new-with-values
   #:%interval-clone
   #:%interval-get-value-type
   #:%interval-set-initial-value
   #:%interval-get-initial-value
   #:%interval-peek-initial-value
   #:%interval-set-final-value
   #:%interval-get-final-value
   #:%interval-peek-final-value
   #:%interval-compute-value
   #:%interval-validate
   #:%interval-register-progress-func
   #:%animation-new
   #:%animation-set-object
   #:%animation-get-object
   #:%animation-set-mode
   #:%animation-get-mode
   #:%animation-set-duration
   #:%animation-get-duration
   #:%animation-set-loop
   #:%animation-get-loop
   #:%animation-set-timeline
   #:%animation-get-timeline
   #:%animation-set-alpha
   #:%animation-get-alpha
   #:%animation-completed
   #:%animation-bind
   #:%animation-bind-interval
   #:%animation-update-interval
   #:%animation-has-property
   #:%animation-unbind-property
   #:%animation-get-interval
   #:%actor-animatev
   #:%actor-animate-with-timelinev
   #:%actor-animate-with-alphav
   #:%actor-get-animation
   #:%animatable-animate-property
   #:%color-new
   #:%color-copy
   #:%color-free
   #:%color-equal
   #:%color-hash
   #:%color-from-string
   #:%color-to-string
   #:%color-from-hls
   #:%color-to-hls
   #:%color-from-pixel
   #:%color-to-pixel
   #:%color-add
   #:%color-subtract
   #:%color-lighten
   #:%color-darken
   #:%color-shade
   #:%param-spec-color
   #:%value-set-color
   #:%value-get-color
   #:%binding-pool-new
   #:%binding-pool-get-for-class
   #:%binding-pool-find
   #:%binding-pool-install-action
   #:%binding-pool-install-closure
   #:%binding-pool-override-action
   #:%binding-pool-override-closure
   #:%binding-pool-find-action
   #:%binding-pool-remove-action
   #:%binding-pool-block-action
   #:%binding-pool-unblock-action
   #:%binding-pool-activate
   #:%event-new
   #:%event-copy
   #:%event-free
   #:%event-type
   #:%event-get-coords
   #:%event-get-state
   #:%event-get-time
   #:%event-get-source
   #:%event-get-stage
   #:%event-get-flags
   #:%event-get
   #:%event-peek
   #:%event-put
   #:%events-pending
   #:%event-get-button
   #:%event-get-click-count
   #:%event-get-key-symbol
   #:%event-get-key-code
   #:%event-get-key-unicode
   #:%keysym-to-unicode
   #:%event-get-related
   #:%event-get-scroll-direction
   #:%event-get-device
   #:%event-get-device-id
   #:%event-get-device-type
   #:%get-input-device-for-id
   #:%input-device-get-device-id
   #:%input-device-get-device-type
   #:%get-current-event-time
   #:%init
   #:%init-with-args
   #:%get-option-group
   #:%get-option-group-without-init
   #:%main
   #:%main-quit
   #:%main-level
   #:%get-debug-enabled
   #:%get-show-fps
   #:%get-timestamp
   #:%get-actor-by-gid
   #:%set-default-frame-rate
   #:%get-default-frame-rate
   #:%set-motion-events-enabled
   #:%get-motion-events-enabled
   #:%clear-glyph-cache
   #:%set-font-flags
   #:%get-font-flags
   #:%get-font-map
   #:%threads-set-lock-functions
   #:%threads-init
   #:%threads-enter
   #:%threads-leave
   #:%threads-add-idle
   #:%threads-add-idle-full
   #:%threads-add-timeout
   #:%threads-add-timeout-full
   #:%threads-add-frame-source
   #:%threads-add-frame-source-full
   #:%threads-add-repaint-func
   #:%threads-remove-repaint-func
   #:%get-keyboard-grab
   #:%get-pointer-grab
   #:%grab-keyboard
   #:%grab-pointer
   #:%ungrab-keyboard
   #:%ungrab-pointer
   #:%grab-pointer-for-device
   #:%ungrab-pointer-for-device
   #:%do-event
   #:%shader-new
   #:%shader-set-vertex-source
   #:%shader-get-vertex-source
   #:%shader-set-fragment-source
   #:%shader-get-fragment-source
   #:%shader-compile
   #:%shader-release
   #:%shader-is-compiled
   #:%shader-set-is-enabled
   #:%shader-get-is-enabled
   #:%shader-set-uniform
   #:%shader-get-cogl-program
   #:%shader-get-cogl-fragment-shader
   #:%shader-get-cogl-vertex-shader
   #:%value-set-shader-float
   #:%value-get-shader-float
   #:%value-set-shader-int
   #:%value-get-shader-int
   #:%value-set-shader-matrix
   #:%value-get-shader-matrix
   #:%units-mm
   #:%units-pt
   #:%units-em
   #:%units-em-for-font
   #:%units-pixels
   #:%units-to-pixels
   #:%units-copy
   #:%units-free
   #:%units-get-unit-type
   #:%units-get-unit-value
   #:%units-from-string
   #:%units-to-string
   #:%param-spec-units
   #:%value-set-units
   #:%value-get-units
   #:%util-next-p2
   #:%timeout-pool-new
   #:%timeout-pool-add
   #:%timeout-pool-remove
   #:%frame-source-add
   #:%frame-source-add-full
   #:%param-spec-fixed
   #:%value-set-fixed
   #:%value-get-fixed
   #:%script-new
   #:%script-load-from-data
   #:%script-load-from-file
   #:%script-add-search-paths
   #:%script-lookup-filename
   #:%script-get-object
   #:%script-unmerge-objects
   #:%script-ensure-objects
   #:%script-list-objects
   #:%script-connect-signals
   #:%script-connect-signals-full
   #:%script-get-type-from-name
   #:%get-script-id
   #:%scriptable-set-id
   #:%scriptable-get-id
   #:%scriptable-parse-custom-node
   #:%scriptable-set-custom-property
   #:%model-set-names
   #:%model-set-types
   #:%model-get-column-name
   #:%model-get-column-type
   #:%model-get-n-columns
   #:%model-get-n-rows
   #:%model-appendv
   #:%model-prependv
   #:%model-insertv
   #:%model-insert-value
   #:%model-remove
   #:%model-foreach
   #:%model-set-sorting-column
   #:%model-get-sorting-column
   #:%model-set-sort
   #:%model-resort
   #:%model-set-filter
   #:%model-get-filter-set
   #:%model-filter-iter
   #:%model-filter-row
   #:%model-get-first-iter
   #:%model-get-last-iter
   #:%model-get-iter-at-row
   #:%model-iter-copy
   #:%model-iter-get-valist
   #:%model-iter-get-value
   #:%model-iter-set-valist
   #:%model-iter-set-value
   #:%model-iter-is-first
   #:%model-iter-is-last
   #:%model-iter-next
   #:%model-iter-prev
   #:%model-iter-get-model
   #:%model-iter-get-row
   #:%list-model-newv
   #:%get-default-backend
   #:%backend-set-resolution
   #:%backend-get-resolution
   #:%backend-set-double-click-time
   #:%backend-get-double-click-time
   #:%backend-set-double-click-distance
   #:%backend-get-double-click-distance
   #:%backend-set-font-options
   #:%backend-get-font-options
   #:%backend-set-font-name
   #:%backend-get-font-name
   #:%g-object-set-property
   #:%g-object-get-property
   #:%g-signal-connect-data
   #:%g-signal-handler-find
   #:%g-signal-handlers-disconnect-matched
   #:%g-signal-handler-is-connected
   #:%g-signal-handler-disconnect
   #:%g-value-init
   #:%g-value-copy
   #:%g-value-reset
   #:%g-value-unset
   #:%g-value-set-instance
   #:%g-value-fits-pointer
   #:%g-value-peek-pointer
   #:%g-value-type-compatible
   #:%g-value-type-transformable
   #:%g-value-transform
   #:%g-value-register-transform-func
   #:%g-strdup-value-contents
   #:%g-value-set-boolean
   #:%g-value-get-boolean
   #:%g-value-set-char
   #:%g-value-get-char
   #:%g-value-set-uchar
   #:%g-value-get-uchar
   #:%g-value-set-int
   #:%g-value-get-int
   #:%g-value-set-uint
   #:%g-value-get-uint
   #:%g-value-set-long
   #:%g-value-get-long
   #:%g-value-set-ulong
   #:%g-value-get-ulong
   #:%g-value-set-int64
   #:%g-value-get-int64
   #:%g-value-set-uint64
   #:%g-value-get-uint64
   #:%g-value-set-float
   #:%g-value-get-float
   #:%g-value-set-double
   #:%g-value-get-double
   #:%g-value-set-enum
   #:%g-value-get-enum
   #:%g-value-set-flags
   #:%g-value-get-flags
   #:%g-value-set-string
   #:%g-value-set-static-string
   #:%g-value-take-string
   #:%g-value-set-string-take-ownership
   #:%g-value-dup-string
   #:%g-type-from-name
   #:%g-type-name
   #:%g-object-ref
   #:%g-object-unref
   #:%g-object-ref-sink
   #:%g-object-is-floating
   #:%g-object-force-floating
   #:%g-object-weak-ref
   #:%g-object-weak-unref
   #:%g-object-add-weak-pointer
   #:%g-object-remove-weak-pointer
   #:%g-object-add-toggle-ref
   #:%g-object-remove-toggle-ref
   #:%g-object-freeze-notify
   #:%g-object-thaw-notify
   ;; wrappers
   #:event-get-coords
   #:make-color
   #:free-color
   #:copy-color
   #:with-color
   #:with-colors
   #:init-clutter
   #:clutter-event-callback
   #:allocation-changed-callback
   #:one-pointer-callback
   #:two-pointer-callback
   #:spatial-change-callback
   #:marker-reached-callback
   #:new-frame-callback
   #:knot-reached-callback
   #:g-signal-connect
   #:connect-lisp-handler
   #:connect-event-handler
   #:disconnect-lisp-signals
   #:disconnect-lisp-signal
   #:set-color
   #:main-with-cleanup
   #:add-idle
   #:add-timeout
   #:add-frame-source
   #:add-repaint-function
   #:remove-repaint-function
   #:alpha-set-mode
   #:alpha-register-function
   #:alpha-set-function
   #:alpha-new-with-function
   #:animate-actor
   #:animate-actor-with-timeline
   #:animate-actor-with-alpha
   #:animation-mode
   #:with-g-value-block
   #:g-value-in-block
   #:init-g-value-in-block
   #:free-g-value-block
   #:make-g-value-block
   #:with-g-value
   #:free-g-value
   #:make-g-value
   #:g-value
   #:make-behaviour-path-with-knots
   #:get-preferred-size
   #:get-preferred-width
   #:get-preferred-height
   #:get-size
   #:get-actor-at-position
   #:connect-new-frame-handler
   #:connect-marker-reached-handler
   #:score-append))
