.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final gE:Landroid/os/Bundle;

.field final iK:J

.field final iL:J

.field final iM:F

.field final iN:J

.field final iO:I

.field final iP:Ljava/lang/CharSequence;

.field final iQ:J

.field iR:Ljava/util/List;

.field final iS:J

.field private iT:Ljava/lang/Object;

.field final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 851
    new-instance v0, Landroid/support/v4/media/session/p;

    invoke-direct {v0}, Landroid/support/v4/media/session/p;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 3

    move-object v0, p0

    .line 557
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 558
    move v1, p1

    iput v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 559
    move-wide v1, p2

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iK:J

    .line 560
    move-wide v1, p4

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iL:J

    .line 561
    move v1, p6

    iput v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iM:F

    .line 562
    move-wide v1, p7

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iN:J

    .line 563
    move v1, p9

    iput v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iO:I

    .line 564
    move-object v1, p10

    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iP:Ljava/lang/CharSequence;

    .line 565
    move-wide v1, p11

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iQ:J

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iR:Ljava/util/List;

    .line 567
    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->iS:J

    .line 568
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->gE:Landroid/os/Bundle;

    .line 569
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iK:J

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iM:F

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iQ:J

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iL:J

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iN:J

    .line 578
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iP:Ljava/lang/CharSequence;

    .line 579
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iR:Ljava/util/List;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iS:J

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->gE:Landroid/os/Bundle;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iO:I

    .line 584
    return-void
.end method

.method public static k(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 23

    .line 785
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 786
    move-object v2, v0

    check-cast v2, Landroid/media/session/PlaybackState;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v3

    .line 787
    nop

    .line 788
    if-eqz v3, :cond_1

    .line 789
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 790
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 791
    invoke-static {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->l(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    goto :goto_0

    .line 795
    :cond_0
    move-object/from16 v19, v4

    goto :goto_1

    :cond_1
    move-object/from16 v19, v1

    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    .line 796
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 800
    :goto_2
    move-object/from16 v22, v1

    goto :goto_3

    .line 798
    :cond_2
    goto :goto_2

    .line 800
    :goto_3
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 801
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    .line 802
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v8

    .line 803
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v10

    .line 804
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v12

    .line 805
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v13

    const/4 v15, 0x0

    .line 807
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v16

    .line 808
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v17

    .line 810
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v20

    move-object v6, v1

    invoke-direct/range {v6 .. v22}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 812
    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->iT:Ljava/lang/Object;

    .line 813
    return-object v1

    .line 815
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iK:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 591
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 592
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iM:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iQ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, ", error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, ", error message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iP:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iR:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 610
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 612
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iM:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 613
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 614
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iL:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 615
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iN:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 616
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iP:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 617
    iget-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iR:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 618
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 619
    iget-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->gE:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 621
    iget p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->iO:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    return-void
.end method
