.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "SourceFile"


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 2233
    if-eqz p2, :cond_0

    .line 2234
    const-class v0, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2236
    :cond_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const-string p1, "search_results"

    .line 2237
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2241
    :cond_1
    const-string p1, "search_results"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 2243
    if-eqz p1, :cond_2

    .line 2245
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2247
    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2250
    :cond_2
    return-void

    .line 2238
    :cond_3
    :goto_1
    return-void
.end method
