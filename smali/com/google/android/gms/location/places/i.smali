.class public final Lcom/google/android/gms/location/places/i;
.super Ljava/lang/Object;


# instance fields
.field public Wn:J

.field public Xd:J

.field public YW:Lcom/google/android/gms/location/places/PlaceFilter;

.field public YX:Z

.field public YY:Z

.field public gV:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/i;->YW:Lcom/google/android/gms/location/places/PlaceFilter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/location/places/i;->Wn:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/location/places/i;->gV:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/places/i;->Xd:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/i;->YX:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/i;->YY:Z

    return-void
.end method
