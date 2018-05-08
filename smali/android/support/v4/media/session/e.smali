.class Landroid/support/v4/media/session/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/j;


# instance fields
.field private final ir:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 1

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    .line 826
    return-void
.end method


# virtual methods
.method public final aw()V
    .locals 1

    .line 838
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 839
    if-eqz v0, :cond_0

    .line 840
    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->iq:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 843
    :cond_0
    return-void
.end method

.method public final ax()V
    .locals 1

    .line 879
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 880
    return-void
.end method

.method public final ay()V
    .locals 1

    .line 887
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 888
    return-void
.end method

.method public final b(IIIII)V
    .locals 7

    .line 896
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 897
    if-eqz v0, :cond_0

    .line 898
    new-instance v1, Landroid/support/v4/media/session/h;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/h;-><init>(IIIII)V

    .line 901
    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    .line 850
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 851
    if-eqz v0, :cond_0

    .line 852
    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->iq:Z

    if-nez v0, :cond_0

    .line 855
    nop

    .line 856
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->k(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 855
    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 863
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 864
    if-eqz v0, :cond_0

    .line 865
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->h(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 867
    :cond_0
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 1

    .line 871
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 872
    if-eqz v0, :cond_0

    .line 873
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c(Ljava/util/List;)Ljava/util/List;

    .line 875
    :cond_0
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    .line 830
    iget-object v0, p0, Landroid/support/v4/media/session/e;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 831
    return-void
.end method
