.class Lcom/google/android/apps/miphone/aiai/matchmaker/api/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;->d(Landroid/os/Parcel;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    new-array p1, p1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    return-object p1
.end method
