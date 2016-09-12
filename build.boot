(set-env!
 :source-paths    #{"src"}
 :dependencies '[[hashobject/boot-s3            "0.1.2-SNAPSHOT" :scope "test"]])

(require
 '[hashobject.boot-s3            :refer :all])

(deftask deploying []
  (set-env! :target-path "dist/")
  (task-options! s3-sync {:source ""
                          :access-key (get-sys-env "AWS_ACCESS_OFFCOURSE_KEY" :required)
                          :secret-key (get-sys-env "AWS_SECRET_OFFCOURSE_KEY" :Required)})
  identity)

(deftask deploy []
  (task-options! s3-sync #(assoc % :bucket "offcourse-web-cf"))
  (comp (deploying)
        (target)
        (s3-sync)))