.class Landroid/support/v4/media/session/k;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field protected final iB:Landroid/support/v4/media/session/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/j;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 284
    iput-object p1, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    .line 285
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 7

    .line 324
    iget-object v0, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    .line 325
    move-object v2, p1

    check-cast v2, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v2}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v5

    goto :goto_0

    :pswitch_1
    move v2, v4

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x5

    goto :goto_0

    :pswitch_4
    move v2, v6

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x8

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    .line 326
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    .line 324
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/session/j;->b(IIIII)V

    .line 327
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 319
    iget-object p1, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {p1}, Landroid/support/v4/media/session/j;->ay()V

    .line 320
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/j;->j(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/j;->i(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/j;->onQueueChanged(Ljava/util/List;)V

    .line 310
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .line 314
    iget-object p1, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {p1}, Landroid/support/v4/media/session/j;->ax()V

    .line 315
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {v0}, Landroid/support/v4/media/session/j;->onSessionDestroyed()V

    .line 290
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 294
    iget-object p1, p0, Landroid/support/v4/media/session/k;->iB:Landroid/support/v4/media/session/j;

    invoke-interface {p1}, Landroid/support/v4/media/session/j;->aw()V

    .line 295
    return-void
.end method
