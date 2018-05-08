.class public final Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final hX:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final iC:J

.field private iD:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1725
    new-instance v0, Landroid/support/v4/media/session/l;

    invoke-direct {v0}, Landroid/support/v4/media/session/l;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->hX:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1636
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->iC:J

    .line 1637
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V
    .locals 2

    .line 1622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    if-eqz p2, :cond_1

    .line 1626
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 1629
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->hX:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1630
    iput-wide p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->iC:J

    .line 1631
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->iD:Ljava/lang/Object;

    .line 1632
    return-void

    .line 1627
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Id cannot be QueueItem.UNKNOWN_ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1624
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Description cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 1715
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 1718
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1720
    if-eqz v3, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    check-cast v4, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v4}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->g(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v6

    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v0

    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    goto :goto_0

    .line 1722
    :cond_3
    return-object v1

    .line 1716
    :cond_4
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1661
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaSession.QueueItem {Description="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->hX:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->iC:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1655
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->hX:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1656
    iget-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->iC:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1657
    return-void
.end method
