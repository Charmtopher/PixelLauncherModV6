.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final iF:Ljava/lang/Object;

.field private final it:Landroid/support/v4/media/session/IMediaSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1576
    new-instance v0, Landroid/support/v4/media/session/n;

    invoke-direct {v0}, Landroid/support/v4/media/session/n;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1470
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    .line 1471
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V
    .locals 0

    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    .line 1475
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->it:Landroid/support/v4/media/session/IMediaSession;

    .line 1476
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1516
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1538
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1539
    return v0

    .line 1541
    :cond_0
    instance-of v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1542
    return v2

    .line 1545
    :cond_1
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1546
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 1547
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2

    .line 1549
    :cond_3
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 1550
    return v2

    .line 1552
    :cond_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1530
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1531
    const/4 v0, 0x0

    return v0

    .line 1533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1522
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    .line 1524
    :cond_0
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->iF:Ljava/lang/Object;

    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1526
    return-void
.end method
