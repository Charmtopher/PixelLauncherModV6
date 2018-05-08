.class Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .line 91
    new-instance v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;ZI)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    new-array p1, p1, [Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;

    return-object p1
.end method
