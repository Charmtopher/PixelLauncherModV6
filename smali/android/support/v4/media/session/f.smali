.class Landroid/support/v4/media/session/f;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "SourceFile"


# instance fields
.field private final ir:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 1

    .line 907
    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    .line 908
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    .line 909
    return-void
.end method


# virtual methods
.method public final onCaptioningEnabledChanged(Z)V
    .locals 3

    .line 961
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 962
    if-eqz v0, :cond_0

    .line 963
    const/16 v1, 0xb

    .line 964
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    .line 963
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 966
    :cond_0
    return-void
.end method

.method public final onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 913
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 914
    if-eqz v0, :cond_0

    .line 915
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 917
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 992
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 993
    if-eqz v0, :cond_0

    .line 994
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 996
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 937
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 938
    if-eqz v0, :cond_0

    .line 939
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 941
    :cond_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 929
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 930
    if-eqz v0, :cond_0

    .line 931
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 933
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3

    .line 945
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 946
    if-eqz v0, :cond_0

    .line 947
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 949
    :cond_0
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 953
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 954
    if-eqz v0, :cond_0

    .line 955
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 957
    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 970
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 971
    if-eqz v0, :cond_0

    .line 972
    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 974
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    .line 921
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 922
    if-eqz v0, :cond_0

    .line 923
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 925
    :cond_0
    return-void
.end method

.method public final onSessionReady()V
    .locals 3

    .line 1013
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 1014
    if-eqz v0, :cond_0

    .line 1015
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1017
    :cond_0
    return-void
.end method

.method public final onShuffleModeChanged(I)V
    .locals 3

    .line 983
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 984
    if-eqz v0, :cond_0

    .line 985
    const/16 v1, 0xc

    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    .line 985
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 988
    :cond_0
    return-void
.end method

.method public final onShuffleModeChangedRemoved(Z)V
    .locals 0

    .line 979
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 9

    .line 1000
    iget-object v0, p0, Landroid/support/v4/media/session/f;->ir:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 1001
    if-eqz v0, :cond_1

    .line 1002
    nop

    .line 1003
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1004
    new-instance v8, Landroid/support/v4/media/session/h;

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->iG:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->iH:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->iI:I

    iget v7, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->iJ:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/h;-><init>(IIIII)V

    goto :goto_0

    .line 1007
    :cond_0
    move-object v8, v1

    :goto_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1, v8, v1}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1009
    :cond_1
    return-void
.end method
